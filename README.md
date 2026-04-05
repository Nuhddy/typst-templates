# typst-templates

Typst templates with RUC branding for university work.

Install locally:
```sh
mkdir $XDG_DATA_HOME/typst/packages/local/uni
cd $XDG_DATA_HOME/typst/packages/local/uni
git clone https://github.com/Nuhddy/typst-templates 0.1.0
```

Create new project:
```
typst init @local/uni
```

Usage in existing project:
```typst
#import "@local/uni:0.1.0": report

#show: report.with(
  // ...
)
```
