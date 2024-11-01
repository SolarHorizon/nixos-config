{
  lib,
  stdenv,
  fetchFromGithub,
  gcc9,
  cmake,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "luau-lsp";
  version = "1.34.0";

  src = fetchFromGithub {
    owner = "JohnnyMorganz";
    repo = finalAttrs.pname;
    rev = finalAttrs.version;
    hash = "";
    fetchSubmodules = true;
  };

  nativeBuildInputs =
    [cmake]
    ++ lib.optional stdenv.isLinux gcc9;

  buildPhase = ''
    runHook preBuild
    cmake ..
    cmake --build . --target Luau.LanguageServer.CLI --config Release
    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    cp ./luau-lsp $out/bin/luau-lsp
    runHook postInstall
  '';

  meta = {
    description = "Language Server Implementation for Luau";
    homepage = "https://github.com/JohnnyMorganz/luau-lsp";
    changelog = "https://github.com/JohnnyMorganz/luau-lsp/tree/v${finalAttrs.version}/CHANGELOG.md";
    license = lib.licenses.mit;
    platforms = lib.platforms.all;
    maintainers = [];
    mainProgram = "luau-lsp";
  };
})
