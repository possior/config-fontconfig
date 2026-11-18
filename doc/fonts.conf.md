[日本語](#fontconfig説明書)｜[English](#fontconfig-document)

# Fontconfig説明書

以下のXML文は、XML 1.0の使用を宣言する。

```XML
<?xml version="1.0"?>
```

以下のXML文は、`fontconfig`という名称で定義されている文法の使用を宣言する。

```XML
<!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
```

以下のXML文章は、`serif`フォントとして使用するフォント列（ここでは`"Liberation Serif", "IPAexMincho"`）を設定する。

```XML
  <alias>
    <family>serif</family>
    <prefer>
      <family>Liberation Serif</family>
      <family>IPAexMincho</family>
    </prefer>
  </alias>
```

# Fontconfig Document

The XML sentence below declares use of XML 1.0.

```XML
<?xml version="1.0"?>
```

The XML sentence below declares use of grammar defined under the name `fontconfig`.

```XML
<!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
```

The XML sentences below configures the sequence of fonts (`"Liberation Serif", "IPAexMincho"` here) used as `serif` fonts.

```XML
  <alias>
    <family>serif</family>
    <prefer>
      <family>Liberation Serif</family>
      <family>IPAexMincho</family>
    </prefer>
  </alias>
```