with import <nixpkgs> {};

pkgs.mkShell {
  buildInputs = with pkgs; [
    (python312.withPackages (ps: with ps; [
      pygments
    ]))
  ];
  shellHook = ''
    exec zsh
  '';
}
