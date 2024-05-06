self: super: {
  surrealist = {
    "2.0.5" = let
    in super.wrapType2 rec {
      pname = "surrealist";
      version = "2.0.5";

      src = super.fetchurl {
        url = "https://github.com/surrealdb/surrealist/releases/download/surrealist-v${version}/surrealist_${version}_amd64.AppImage.tar.gz";
        hash = "";
      };

      sourceRoot = ".";

      meta = with super.lib; {
        description = "A scalable, distributed, collaborative, document-graph database, for the realtime web";
        homepage = "https://github.com/surrealdb/surrealist";
        mainProgram = "surrealist";
        platforms = [ "x86_64-linux" ];
        license = licenses.mit;
      };
    };
  };
}
