# Usage: curl -sL "https://raw.githubusercontent.com/hipexscape/Scripts/tsm/mediatek_codec_patch.sh" | bash

# Media: Import extractor changes from t-alps-q0.mp1-V9.122.1
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/hipexscape-stuff/frameworks_av/commit/65d50061a5b32e3bc981805f331a4ba1bb7a501b.patch")"

# media: libstagefright: Limit max width/height to display size
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/hipexscape-stuff/frameworks_av/commit/dc3567608ef40ee5fc3c4000dc8f2d0d066f886b.patch")"

# Media: Import codecs/omx changes from t-alps-q0.mp1-V9.122.1
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/hipexscape-stuff/frameworks_av/commit/da6f6882af7cdec3f71dc030646b7614663b2c37.patch")"

# stagefright: remove HW_TEXTRUE usage from SurfaceMediaSource
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/hipexscape-stuff/frameworks_av/commit/a617bfe0eb1b6b0f392bd1a8103b66bacbf6
