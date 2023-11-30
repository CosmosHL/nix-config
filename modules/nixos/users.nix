{ ... }:
{
  nix.settings.trusted-users = ["ozoku"];

  users.groups.ozoku = {};

  users.users.ozoku = {
    hashedPassword = "$6$uUwY2r72hiQKd0dN$6mnZKe1b6i9GqZ2EVXRcXUH/wVQnofrm6jGpxSEHjyde5ONYamih5I1TYdtNFBb.S/VSdOTQ.fe/iTrRD1XaU0";
    home = "/home/ozoku";
    isNormalUser = true;
    extraGroups = [
      "ozoku"
      "users"
      "networkmanager"
      "wheel"
    ];
  };
}
