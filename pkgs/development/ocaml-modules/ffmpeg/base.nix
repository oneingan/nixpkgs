{ lib, fetchFromGitHub }:

rec {
  version = "1.3.0-unstable-2026-04-26";

  src = fetchFromGitHub {
    owner = "savonet";
    repo = "ocaml-ffmpeg";
    rev = "f5849f5c9dff3d183cb1a1e17c16d6b211bcc5b3";
    hash = "sha256-0KBlhR11zDLqssdW8JtEzQbAtboCJo2tj4NHGpeN/Gs=";
  };

  meta = {
    homepage = "https://github.com/savonet/ocaml-ffmpeg";
    description = "Bindings for the ffmpeg libraries";
    changelog = "https://raw.githubusercontent.com/savonet/ocaml-ffmpeg/${src.rev}/CHANGES";
    license = lib.licenses.lgpl21Only;
    maintainers = with lib.maintainers; [
      dandellion
      momeemt
      juaningan
    ];
  };
}
