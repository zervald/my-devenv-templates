{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  # https://devenv.sh/basics/
  # env.GREET = "devenv";

  # https://devenv.sh/packages/
  # packages = [ pkgs.maven ];

  # https://devenv.sh/languages/
  # languages.java = {
  #   enable = true;
  #   maven.enable = true;
  #   lsp.enable = true;
  # };

  #Ansible
  #C
  #Clojure
  #Cplusplus
  #Crystal
  #Cue
  #Dart
  #Deno
  #Dotnet
  #Elixir
  #Elm
  #Erlang
  #Fortran
  #Gawk
  #Gleam
  #Go
  #Hare
  #Haskell
  #Helm
  #Idris
  #Java
  #Javascript
  #Jsonnet
  #Julia
  #Kotlin
  #Lean4
  #Lobster
  #Lua
  #Nim
  #Nix
  #Ocaml
  #Odin
  #Opentofu
  #Pascal
  #Perl
  #Php
  #Pkl
  #Purescript
  #Python
  #R
  #Racket
  #Raku
  #Robotframework
  #Ruby
  #Rust
  #Scala
  #Shell
  #Solidity
  #Standardml
  #Swift
  #Terraform
  #Texlive
  #Typescript
  #Typst
  #Unison
  #V
  #Vala
  #Zig

  # https://devenv.sh/processes/
  # processes.dev.exec = "${lib.getExe pkgs.watchexec} -n -- ls -la";

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/scripts/
  # scripts.hello.exec = ''
  #   echo hello from $GREET
  # '';

  # https://devenv.sh/basics/
  enterShell = ''
    git status
  '';

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  # enterTest = ''
  #   echo "Running tests"
  # '';

  # https://devenv.sh/git-hooks/
  # git-hooks.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
