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

      };

      defaultTemplate = self.templates.simple;
    };
}
