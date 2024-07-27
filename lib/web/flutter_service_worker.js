'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "c720964ce3d8e8160354537c8799b210",
"assets/AssetManifest.bin.json": "bc4671b90cfabf5c5094389627ce792d",
"assets/AssetManifest.json": "3720a7a2f2b33120a6c0cbcdb6bb07fa",
"assets/assets/documents/myresume.pdf": "fed83b3d7133f98a388bc21382ed8a94",
"assets/assets/documents/spoken-tutorial-cpp-certificate.pdf": "9885e6e9cb0527bf1bb0ae33f3537585",
"assets/assets/documents/tic-tech-toe-hackathon-certificate.pdf": "8cc8e6633877af916efe2664351eb59d",
"assets/assets/fonts/SourceSans3-Bold.ttf": "91e42896d12340dc2039cf7098cf6682",
"assets/assets/fonts/SourceSans3-Medium.ttf": "0029d6c389a7945dbc32604af073250d",
"assets/assets/fonts/SourceSans3-Regular.ttf": "72a368e7e2bcbd83f75c763aa19d8bf4",
"assets/assets/images/50-days-badge.png": "ba04f1f00e4eecb39a6d08a6f4932c2c",
"assets/assets/images/achievement-default.png": "b9bebb70b2efd99d2faccf87e46edbc4",
"assets/assets/images/androidstudio.png": "b13dee92cd947f03f066271be5e2298e",
"assets/assets/images/badge-logo.png": "67f2598c3b3bf9deb0d519239f6df285",
"assets/assets/images/codechef-icon.png": "ea06f98a6217d80f6ab28cd12ac4bcbb",
"assets/assets/images/codechef-image.png": "936849b04df2c7b6393b9c02674c3a83",
"assets/assets/images/copyright-black.png": "5fef38834396ab004da2cb4174bc3c96",
"assets/assets/images/copyright-white.png": "898494a4092fa2dd4a397dab0475ec96",
"assets/assets/images/cpp-logo.png": "eda66ba9335be1fa4c0190a48de83c48",
"assets/assets/images/default-achievement.png": "f6926c8e51b51f6ea23b0bf5ccbadb24",
"assets/assets/images/developer-icon.png": "9a51bf23e9a73131487f26ae14b5a1c2",
"assets/assets/images/developer-image.png": "4437e8274d4c4360f7128e2d35821084",
"assets/assets/images/error-icon.png": "2a75e877d1678b77ed80c23610169bab",
"assets/assets/images/expense-tracker.png": "077aa2e68c6fb9cf796f08041c34189e",
"assets/assets/images/figma.png": "11bda884d5a2d5f5e90fa7ca0f8740d0",
"assets/assets/images/flutter-logo.png": "4262c71228b7aa391e995fe5f1d57795",
"assets/assets/images/flutter_back5.png": "aaae36b82fa3ca237cf5e7ee7281f368",
"assets/assets/images/freshstart-logo.png": "6fb36d6e96d83b8db57ff22a20d5a034",
"assets/assets/images/github-cat.png": "4eab660bcc18dcaea8326998d62e481a",
"assets/assets/images/github-image.png": "5b181fff0490f2f586130a473c058d74",
"assets/assets/images/github-white.png": "a9e8c39738d4a44530cb482d05e704a6",
"assets/assets/images/github.png": "ec3a60c8c6539a07eb70b52f6737ea6e",
"assets/assets/images/home_image3.png": "c81fc87b6c255ca0141a689baa2914f0",
"assets/assets/images/icon.png": "abe3d146542348aeea6833997b9ddb0f",
"assets/assets/images/icon3.png": "64bc052bf4e5f1b098c0d282fcfc78b8",
"assets/assets/images/ieee-logo.png": "a6d3c9ab8dfdbadd622d7e25660af66d",
"assets/assets/images/instagram-black.png": "0da77b1e8f49829b247207ca87721d35",
"assets/assets/images/instagram-white.png": "ae7e6e4f03a2d0718d373f51e49ac42d",
"assets/assets/images/leetcode-icon.png": "08dbd105255c8740f9555077b77480c0",
"assets/assets/images/leetcode-image.png": "2fabdcc5d9906070ebcf99e03071a561",
"assets/assets/images/linkedin-icon.png": "6dc6b14de40840e78b341e2424dd9930",
"assets/assets/images/linkedin-image.png": "d221d1d5f141b08e041f74897a2e1a8f",
"assets/assets/images/linkedin-logo-black.png": "4542f6fc5a1fc3816d68326316c7a27b",
"assets/assets/images/linkedin-white.png": "74aa89439c203911706470558ce41863",
"assets/assets/images/mobile-vector.png": "d95a077b07feb941eb06ee9425592a8a",
"assets/assets/images/myimage-shadow.png": "a4544ece4286bbe188490af4d5810892",
"assets/assets/images/myimage.png": "e9b351ec1e0662d61aca530a42a38149",
"assets/assets/images/myportfolio_back.png": "b1fcb8273792cdd602f5caee72db7b57",
"assets/assets/images/profile-image2.png": "f34dfca01785155c524c59a7fa29e303",
"assets/assets/images/profile614.png": "5093ee84ff03aad35d51972aef0be794",
"assets/assets/images/project1.png": "30fec0695c5778592984c31d3c276679",
"assets/assets/images/project2.png": "8303a2cb8598728f32bfa0ea373d18da",
"assets/assets/images/project3.png": "6509719eed21a600a0f61573bc9cede8",
"assets/assets/images/resume-top1.png": "d86fe2efcbfc364a0cbcdcc8188a90a4",
"assets/assets/images/resume-top2.png": "8e9043f8990bec0782ba3f06df45a0c5",
"assets/assets/images/resume3.png": "a3a3d2369b9bcf1f7d334516b3ee7658",
"assets/assets/images/sent-icon.png": "4c9798c1b51983f5d6966f659193388d",
"assets/assets/images/square-logo.png": "fcee0b68e179e68f7f97203beb8662b3",
"assets/assets/images/temp-image.png": "441e672a1edfe23c364fce79e1443262",
"assets/assets/images/temp-image2.png": "0743d285d61110a958b9ced526f8b220",
"assets/assets/images/temp-image3.png": "a9de238684a464592291138684d560ce",
"assets/assets/images/todo-app.png": "fa9c9326067f6dbce2e86ad912be4f69",
"assets/assets/images/uiux-design.png": "f70283563dde334ca8e2acd7524ed8a8",
"assets/assets/images/uiux-poster.png": "46699ac024e803571e769f7c17eac503",
"assets/assets/images/uiux-project1.png": "dfac375d9a7c901b424da28ec10b7571",
"assets/assets/images/uiux-project2.png": "f130ec6938394ca7e5b82da527d2b493",
"assets/assets/images/vscode.png": "a6abeed287993ba97987cc36b4004570",
"assets/assets/images/web-black-logo.png": "28fb21ed986c47fce06482ec68a1618b",
"assets/assets/images/web-white-logo.png": "43d973ac334ab2d7976e14c11c796d27",
"assets/FontManifest.json": "119a0d456ee024fe6df87243a0c586f5",
"assets/fonts/MaterialIcons-Regular.otf": "17a8dac851003d2e249f714bc59db7ad",
"assets/NOTICES": "c7af9ca718d47a24703cf116fb8886b9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "4b0f46ccd60be56f2146f17c3f498abf",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "e3edd677bf4d0dc73aeb73a43b33a6b0",
"icons/Icon-192.png": "8fe0325ab77497256748d884424ea675",
"icons/Icon-512.png": "2b394318dc4eb18694b4589d913fd064",
"icons/Icon-maskable-192.png": "8fe0325ab77497256748d884424ea675",
"icons/Icon-maskable-512.png": "2b394318dc4eb18694b4589d913fd064",
"index.html": "70cb1f92849549de8c2ccb3ba1e98b17",
"/": "70cb1f92849549de8c2ccb3ba1e98b17",
"main.dart.js": "e9b9942bb7e93ef2c0a3d24c0ed80090",
"manifest.json": "a4325034eeebd4a4eab7575192860057",
"version.json": "362c475816bd4f2eed31ffb1667f330b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
