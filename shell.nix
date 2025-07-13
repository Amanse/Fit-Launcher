let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    rustc
    cargo
    rust-analyzer
    pkg-config
    gobject-introspection
    cargo
    cargo-tauri
    nodejs
    steam-run-free
    aria2
  ];

  buildInputs = with pkgs; [
    at-spi2-atk
    atkmm
    cairo
    gdk-pixbuf
    glib
    gtk3
    harfbuzz
    librsvg
    libsoup_3
    pango
    webkitgtk_4_1
    openssl
    pkgs.glib
    libayatana-appindicator
  ];

  shellHook = ''
    export LD_LIBRARY_PATH="${pkgs.libayatana-appindicator}/lib:$LD_LIBRARY_PATH"
  '';
}
