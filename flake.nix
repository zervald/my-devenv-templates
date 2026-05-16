{
  description = "My collection of devenv templates";

  outputs =
    { self }:
    {
      templates = {
        simple = {
          path = ./simple;
          description = "Simple default template";
        };

        architecture-ordinateurs = {
          path = ./architecture-ordinateurs;
          description = "Template for INF4170 tools";
          # welcomeText = ''
          #   - Run `nix develop`
          # '';
        };

        direnv = {
          path = ./direnv;
          description = "Template for a .envrc file using direnv";
        };

        ocaml = {
          path = ./ocaml;
          description = "Template for LTS OCaml development";
        };

        vm = {
          path = ./vm;
          description = "Template for nixos vm using nixos-shell";
        };
      };

      defaultTemplate = self.templates.simple;
    };
}
