{
  config,
  lib,
  pkgs,
  ...
}:
{
  # make pure nixos-shell
  nixos-shell.mounts = {
    mountHome = false;
    mountNixProfile = false;
    # cache = "none"; # default is "loose"
  };

  # customize kernel version
  boot.kernelPackages = pkgs.linuxPackages_latest;

  users.groups.admin = { };
  users.users = {
    admin = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      password = "admin";
      group = "admin";
    };
  };

  virtualisation.vmVariant = {
    # following configuration is added only when building VM with build-vm
    virtualisation = {
      memorySize = 2048; # Use 2048MiB memory.
      cores = 3;
      graphics = false;
      forwardPorts = [
        {
          from = "host";
          host.port = 2222;
          guest.port = 22;
        }
      ];
    };
  };

  services.openssh = {
    enable = true;
    settings.PasswordAuthentication = true;
  };

  networking.firewall.allowedTCPPorts = [ 22 ];
  environment.systemPackages = with pkgs; [
    htop
    fish
  ];

  system.stateVersion = "25.11";
}
