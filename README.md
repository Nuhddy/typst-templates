# typst-templates

Typst templates with RUC branding for university work.

## Install

Manual:
```sh
mkdir $XDG_DATA_HOME/typst/packages/local/uni
cd $XDG_DATA_HOME/typst/packages/local/uni
git clone https://github.com/Nuhddy/typst-templates 0.1.0
```

Nix flakes + home-manager:
```nix
# Add to flake inputs
typst-templates = {
  url = "github:Nuhddy/typst-templates";
  inputs.nixpkgs.follows = "nixpkgs";
};

# Add to configuration
home.file."${config.xdg.dataHome}/typst/packages/local/uni/0.1.0".source =
  inputs.typst-templates.packages."your-system-arch";
```

## Usage

Create new project:
```
typst init @local/uni
```

Use in existing project:
```typst
#import "@local/uni:0.1.0": report, homework

#show: report.with(
  // ...
)

#show: homework.with(
  // ...
)
```
