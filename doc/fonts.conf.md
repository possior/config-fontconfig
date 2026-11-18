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

以下のXML文は、その内部にFontconfigの設定を格納する。

```XML
<fontconfig>
  <!-- ここにFontconfig設定 -->
</fontconfig>
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

以下のXML文章は、日本語`serif`フォントとして使用するフォント列（ここでは`IPAexMincho`）を設定する。

```XML
  <match target="pattern">
    <test name="family">
      <string>serif</string>
    </test>
    <test name="lang" compare="contains">
      <string>ja</string>
    </test>
    <edit name="family" mode="prepend" binding="strong">
      <string>IPAexMincho</string>
    </edit>
  </match>
```

以下のXML文章は、`sans-serif`フォントとして使用するフォント列（ここでは`"Liberation Sans", "IPAexGothic"`）を設定する。

```XML
  <alias>
    <family>sans-serif</family>
    <prefer>
      <family>Liberation Sans</family>
      <family>IPAexGothic</family>
    </prefer>
  </alias>
```

以下のXML文章は、日本語`sans-serif`フォントとして使用するフォント列（ここでは`"IPAexGothic"`）を設定する。

```XML
  <match target="pattern">
    <test name="family">
      <string>sans-serif</string>
    </test>
    <test name="lang" compare="contains">
      <string>ja</string>
    </test>
    <edit name="family" mode="prepend" binding="strong">
      <string>IPAexMincho</string>
    </edit>
  </match>
```

以下のXML文章は、`monospace`フォントとして使用するフォント列（ここでは`"Liberation Mono"`）を設定する。

```XML
  <alias>
    <family>monospace</family>
    <prefer>
      <family>Liberation Mono</family>
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

The XML sentence below contains the Fontconfig settings inside it.

```XML
<fontconfig>
  <!-- the Fontconfig settings here -->
</fontconfig>
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

The XML sentences below configures the sequence of fonts (`"IPAexMincho"` here) used as Japanese `serif` fonts.

```XML
  <match target="pattern">
    <test name="family">
      <string>serif</string>
    </test>
    <test name="lang" compare="contains">
      <string>ja</string>
    </test>
    <edit name="family" mode="prepend" binding="strong">
      <string>IPAexMincho</string>
    </edit>
  </match>
```

The XML sentences below configures the sequence of fonts (`"Liberation Sans", "IPAexGothic"` here) used as `sans-serif` fonts.

```XML
  <alias>
    <family>sans-serif</family>
    <prefer>
      <family>Liberation Sans</family>
      <family>IPAexGothic</family>
    </prefer>
  </alias>
  ```

The XML sentences below configures the sequence of fonts (`"IPAexGothic"` here) used as Japanese `sans-serif` fonts.

```XML
  <match target="pattern">
    <test name="family">
      <string>sans-serif</string>
    </test>
    <test name="lang" compare="contains">
      <string>ja</string>
    </test>
    <edit name="family" mode="prepend" binding="strong">
      <string>IPAexMincho</string>
    </edit>
  </match>
```

  The XML sentences below configures the sequence of fonts (`"Liberation Mono"` here) used as `monospace`.

```XML
  <alias>
    <family>monospace</family>
    <prefer>
      <family>Liberation Mono</family>
    </prefer>
  </alias>
```