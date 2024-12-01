{ pkgs }:

pkgs.stdenv.mkDerivation {
	name = "icons";
	src = pkgs.fetchFromGitHub {
		owner = "iuricarras";
		repo = "gtk3-themes";
		rev = "ceee19d63857f5d6575aa657a55c85c23a0e3846";
		sha256 = "GXpkE5ufyigKg1c1eHU9pONDUfGf1goSE/7Io4E5LLI=";
	};
	dontUnpack = true;
	installPhase = ''
		mkdir -p $out/share/icons
		cp -r $src/icons/* $out/share/icons/
		'';
	}
