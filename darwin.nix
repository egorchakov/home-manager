{
  self,
  pkgs,
  ...
}: {
  nix.settings.experimental-features = "nix-command flakes";
  system.configurationRevision = self.rev or self.dirtyRev or null;
  system.stateVersion = 6;
  nixpkgs.hostPlatform = "aarch64-darwin";

  environment.shells = [pkgs.bashInteractive pkgs.zsh pkgs.nushell];

  users.users.evgenii = {
    home = "/Users/evgenii";
    shell = pkgs.nushell;
  };
}
