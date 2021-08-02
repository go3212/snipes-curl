{
  "targets": [
    {
      "target_name": "greet",
      "cflags!": [ "-fno-exceptions -lcurl" ],
      "cflags_cc!": [ "-fno-exceptions -lcurl" ],
      "sources": [
        "./src/greeting.cpp",
        "./src/index.cpp"
      ],
      "include_dirs": [
        "<!@(node -p \"require('node-addon-api').include\")"
      ],
      "libraries": [ "-lcurl" ],
      'defines': [ 'NAPI_DISABLE_CPP_EXCEPTIONS' ],
    }
  ]
}