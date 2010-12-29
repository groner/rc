function FindProxyForURL(url, host) {
  if (url.match(/^https?:\/\/mail\.cv\.nrao\.edu(?::\d+)?(?:\/|$)/)) return "DIRECT;";
  if (url.match(/^https?:\/\/(?:[-\w]+\.)*nrao\.edu(?::\d+)?(?:\/|$)/)) return "SOCKS localhost:9000; DIRECT;";
  if (url.match(/^https?:\/\/(?:[-\w]+\.)*safaribooksonline\.com(?::\d+)?(?:\/|$)/)) return "SOCKS localhost:9000; DIRECT;";

  return "DIRECT";
}

