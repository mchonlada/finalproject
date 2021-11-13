'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "4a7191c3043bc6a5b80042ba00de4e8d",
"assets/assets/1.mp3": "ab9f0975775585da41d882ce2b89b984",
"assets/assets/10.mp3": "7cceebb400ebe40022c288066af82c8d",
"assets/assets/11.mp3": "1d6091b6b7a647c4060123e586101592",
"assets/assets/12.mp3": "7879ead15fe48b8d7deb5c826dab69a1",
"assets/assets/13.mp3": "89b205e0c26fe3d43799bab590a0677c",
"assets/assets/14.mp3": "64da43ae2b8583eb0dc1bdd577ab5a3a",
"assets/assets/15.mp3": "6d1b96e8f139aee51b3d8e4876181218",
"assets/assets/16.mp3": "590d1ce39023b77cbbf3e4eadcc37cf0",
"assets/assets/17.mp3": "f1351436fc8372cb9ab574cdec76b4fd",
"assets/assets/18.mp3": "1f11b95ba0fad036426ab936c95383c6",
"assets/assets/19.mp3": "6cd25969ce774ff0e5c8926cb6d5a129",
"assets/assets/2.mp3": "9aabc79d7cbfd116e6876e06d0c4faf4",
"assets/assets/20.mp3": "b5f39b18fc5688e78c11ea973a1c81ed",
"assets/assets/21.mp3": "d19ba3afe98857ee166bc84b9ec4b435",
"assets/assets/22.mp3": "8837b053eea318f7859ffaf215b7eb78",
"assets/assets/23.mp3": "bcb1169e6e53debd94df134083043e94",
"assets/assets/24.mp3": "2827af831dbe4af038094d8b00a1cbd1",
"assets/assets/25.mp3": "81dcb085bb630e9c104d224c5ce77980",
"assets/assets/26.mp3": "1764cfab3aa081b43b5c98ba56bb0aed",
"assets/assets/27.mp3": "a23def85132ff66129dd2878a5300539",
"assets/assets/28.mp3": "ec751fb1befefbe781f7393db8eded23",
"assets/assets/29.mp3": "59b4ddfd846181e0210bdb950f4fc159",
"assets/assets/3.mp3": "9d4272daf89d93b0325cfac49f9a3a7b",
"assets/assets/30.mp3": "dba82787bb1a06ae987026fb503deed3",
"assets/assets/31.mp3": "ad70d17b42e90a1fb264066244f36d77",
"assets/assets/32.mp3": "bcdd67204842f26b91bd9d6e8ce1b293",
"assets/assets/33.mp3": "085a4c848979b0679be5eee588220173",
"assets/assets/34.mp3": "6fb42fd0f150cdacaeb8b7b9e93fbc2a",
"assets/assets/35.mp3": "26130909dd5c519a24036ed0eee21324",
"assets/assets/36.mp3": "fe69695334ca603f7a3f862e6439cdb9",
"assets/assets/37.mp3": "5389b30359499ae305a5fbd45e5a5634",
"assets/assets/38.mp3": "f53e70610dd0458cd56c733517bf0a16",
"assets/assets/4.mp3": "7a8d7ab87e4d9dc5223c3b33ca3d59d4",
"assets/assets/5.mp3": "ba4a7ec6f9f8781e559ffa12fe6c2faf",
"assets/assets/6.mp3": "562cbd9212b9bce952db99a50ee70f6e",
"assets/assets/7.mp3": "4cc47fb02f296b6e07365f288013f7d4",
"assets/assets/8.mp3": "a54bcf463433edb866d4f93a9c43f390",
"assets/assets/9.mp3": "0ebe42b45094b9a450a9b936a48561ef",
"assets/assets/images/1.jpg": "724d54934c50819e938a4750bea75fcd",
"assets/assets/images/10.jpg": "4de73697defcb1552eb8b5fdce2fd343",
"assets/assets/images/11.jpg": "e25a8fcfa641a4dc30ba9faa2c8aa2f4",
"assets/assets/images/12.jpg": "2a20488aef75e7d50f8b659faefc51fa",
"assets/assets/images/13.jpg": "de57cf91985b24a8b36f4c000e19cefa",
"assets/assets/images/14.jpg": "716943e536972f8197480e30edd3e7a3",
"assets/assets/images/15.jpg": "4a5789302f34e088516d64ab6fbbf3de",
"assets/assets/images/16.jpg": "30f73a314377fe78e36277ba98a7e4ef",
"assets/assets/images/17.jpg": "123008055b7723f4d7805ea99429a6f3",
"assets/assets/images/18.jpg": "eed9e996700cc83b11388c94b8a9f7c4",
"assets/assets/images/19.jpg": "26a52839ee63a96a96484293426ec439",
"assets/assets/images/2.jpg": "948d6f89bf67e384441bc099e79aff78",
"assets/assets/images/20.jpg": "9b96559b3a96ebf4d0db58ae4ef75647",
"assets/assets/images/21.jpg": "bcd80677f3d25ab8d44c399ce01503fb",
"assets/assets/images/22.jpg": "abde71f58d1644927991758b12c5e8f4",
"assets/assets/images/23.jpg": "0b4c2d7b5c8b9e225ab2a5187386c4e9",
"assets/assets/images/24.jpg": "0841e910a0af028e9c23c811d06309dd",
"assets/assets/images/25.jpg": "202b2cb580a5e94c9fb9bf1d7f6a28cc",
"assets/assets/images/26.jpg": "8033f1b5853ee6d7f8b8c6ef4dd686a7",
"assets/assets/images/27.jpg": "aca68f6ce361ce5b6844720e46c21f40",
"assets/assets/images/28.jpg": "19319efc752e5a0194a4de2fa0574e08",
"assets/assets/images/29.jpg": "c515ca8aa7f0a800b9e9b5b8ca02a9c6",
"assets/assets/images/3.jpg": "5a8bf67a3a97a761816c439c52c92dfc",
"assets/assets/images/30.jpg": "82d3762e0d5d5192b4b0f5a33a07f6ea",
"assets/assets/images/31.jpg": "c7e5f671d19802fb1c3c2605acb6eec2",
"assets/assets/images/32.jpg": "3e70680d97a1e93f44ad9d6c2ba49cf2",
"assets/assets/images/33.jpg": "10e25372abf4a7b424a4232873d969c3",
"assets/assets/images/34.jpg": "2de4de6ca6ad12ca5a2c662679c61bcb",
"assets/assets/images/35.jpg": "701abbc33050f7ee610407a920377200",
"assets/assets/images/36.jpg": "1646540e9b322f7db320b2cc60ef301e",
"assets/assets/images/37.jpg": "0d42dcbe410f8cd3c1d67978b47bee79",
"assets/assets/images/38.jpg": "f69241e8e9bb1a553acb3b59b8ede64f",
"assets/assets/images/4.jpg": "6bd3288501cd462f2edaa7097a9207c6",
"assets/assets/images/5.jpg": "570335a328f7defd1ec8bb17fc57575c",
"assets/assets/images/6.jpg": "07000754f0339465666a5e9c0b0c5a3f",
"assets/assets/images/7.jpg": "aeea4e7359c32255fa49f030c07df369",
"assets/assets/images/8.jpg": "25d6f29b5f1c01db78c60c1853feb95e",
"assets/assets/images/9.jpg": "c4c1f22ead4ad78735d4577c0ee751a6",
"assets/assets/images/b.jpg": "6dbcfcd426f5e2293f62f1563ecf1679",
"assets/assets/images/bg.jpg": "33c6b332032c4af888d9d769ca8e484b",
"assets/assets/images/bg.png": "a7d45b8c8542ff2219e552a200769771",
"assets/assets/images/bg8.jpg": "3445f69a40dd0ce6d3770133455c4926",
"assets/assets/images/bghome.jpg": "366dfddc04411a10ea382007ac1791a3",
"assets/assets/images/bglist.jpg": "b6869fe40d3c8ee5aafbf16487ed108a",
"assets/assets/images/bm.jpg": "230c7c32db0df3103dae0c7bb59dc754",
"assets/assets/images/music_record.jpeg": "5850bd394e2401819abdb41148dda027",
"assets/assets/images/pro.jpg": "9d2efd91f2b3bb42e91f7f6fa05a0524",
"assets/assets/images/t.jpg": "c5dadb134c4939a3c1c789b3f9863049",
"assets/assets/images/t2.jpg": "ee83e37919e055599e69b73e08ebbe74",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "b15063c3bd91eb7663c3d52d7805ee68",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "750e4abc3ca0719f880f193b03b2b449",
"/": "750e4abc3ca0719f880f193b03b2b449",
"main.dart.js": "f6fd44152f4989fb79dbc243ee53adb3",
"manifest.json": "e617c0fcf05258cdd32c763e42122947",
"version.json": "9ab381158d6efe1967ed4df09d995206"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
