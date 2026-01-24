{ lib, fetchFromGitHub }:

rec {
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "savonet";
    repo = "ocaml-ffmpeg";
    rev = "c8d157e221e30f729f8201be6b476358a363b92f";
    hash = "sha256-sGi/U9obTjm3MfiEyCR/SMWHWjxsNGmCBrWQBGgIrNI=";
  };

  meta = {
    homepage = "https://github.com/savonet/ocaml-ffmpeg";
    description = "Bindings for the ffmpeg libraries";
    changelog = "https://raw.githubusercontent.com/savonet/ocaml-ffmpeg/refs/tags/${src.tag}/CHANGES";
    license = lib.licenses.lgpl21Only;
    maintainers = with lib.maintainers; [
      dandellion
      momeemt
      juaningan
    ];
  };
}
