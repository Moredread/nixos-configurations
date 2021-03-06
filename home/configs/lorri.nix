# See https://github.com/target/lorri/issues/96#issuecomment-506890388
{ pkgs, ... }:
let
  lorri = import <lorri> {};
in
{
  home.packages = [ lorri ];

  systemd.user.sockets.lorri = {
    Unit = {
      Description = "lorri build daemon";
    };

    Socket = {
      ListenStream = "%t/lorri/daemon.socket";
    };

    Install = {
      #      WantedBy = [ "sockets.target" ];
    };
  };

  systemd.user.services.lorri = {
    Unit = {
      Description = "lorri build daemon";
      Documentation = "https://github.com/target/lorri";
      ConditionUser = "!@system";
      Requires = "lorri.socket";
      After = "lorri.socket";
      RefuseManualStart = true;
    };

    Service = {
      ExecStart = "${lorri}/bin/lorri daemon";
      PrivateTmp = true;
      ProtectSystem = "strict";
      WorkingDirectory = "%h";
      Restart = "on-failure";
      Environment = "PATH=${pkgs.nix}/bin RUST_BACKTRACE=1";
    };
  };
}
