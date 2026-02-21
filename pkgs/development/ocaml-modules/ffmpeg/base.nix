{ lib, fetchFromGitHub }:

rec {
  version = "1.3.0-unstable-2026-02-18";

  src = fetchFromGitHub {
    owner = "savonet";
    repo = "ocaml-ffmpeg";
    rev = "0a7e3cf8a0f16f0ba1d639d6e83c526cf68fb0da";
    hash = "sha256-rMz1zZf9oLa8WjyVduS9q1kUjAoVEqtNc7h8ols6eLE=";
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
