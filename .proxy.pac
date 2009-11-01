function FindProxyForURL(url, host) {
  // if (shExpMatch(url, "http://*.nrao.edu/*") || shExpMatch(url, "http://*.nrao.edu:*/*") || shExpMatch(url, "https://*.nrao.edu/*") || shExpMatch(url, "https://*.nrao.edu:*/*")) return "SOCKS localhost:9000; DIRECT;";
  if (url.match(/^https?:\/\/(?:\w+\.)*nrao.edu(?::\d+)?(?:\/|$)/)) return "SOCKS localhost:9000; DIRECT;";
  if (url.match(/^https?:\/\/(?:\w+\.)*safaribooksonline.com(?::\d+)?(?:\/|$)/)) return "SOCKS localhost:9000; DIRECT;";

  return "DIRECT";
}

