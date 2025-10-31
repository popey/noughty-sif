{
  lib,
  pkgs,
}:

lib.makeScope pkgs.newScope (
  self:
  let
    inherit (self) callPackage;
  in
  {
    pixdecor = callPackage ./pixdecor.nix { };
    wayfire-plugins-extra = callPackage ./wayfire-plugins-extra.nix { };
    wcm = callPackage ./wcm.nix { };
    wf-info = callPackage ./wf-info.nix { };
    wf-shell = callPackage ./wf-shell.nix { };
  }
)
