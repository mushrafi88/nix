let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  buildInputs = [
    pkgs.python311
    pkgs.python311.pkgs.pip
    pkgs.python311.pkgs.virtualenv
    pkgs.python311.pkgs.requests
    pkgs.python311.pkgs.beautifulsoup4
  ];
  shellHook = ''
                    python3 -m venv $HOME/animdl/animdl_env
                    source $HOME/animdl/animdl_env/bin/activate
                    pip install -U animdl
    				zsh
        			echo "###############################"
        			echo "#####     Launching     #######"
        			echo "#####  Anime Downloader #######"
        			echo "###############################"
                	'';
}
