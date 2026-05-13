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
      };

      defaultTemplate = self.templates.simple;
    };
}
