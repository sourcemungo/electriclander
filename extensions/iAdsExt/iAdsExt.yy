{
    "id": "053900b5-eb2a-47fc-8ef0-66e2cd9aa6d8",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "iAdsExt",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.RECORD_AUDIO",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "iAdsExt",
    "copyToTargets": -1,
    "date": "2019-10-28 10:12:46",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "0be91762-27bb-4c62-95a3-4ee67a5c7279",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 49385710,
            "filename": "iads.ext",
            "final": "",
            "functions": [
                {
                    "id": "c8f63a0d-eac6-4fb1-8ee7-4534f199fa53",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "iAds_Init",
                    "help": "iAds_Init()",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_Init",
                    "returnType": 2
                },
                {
                    "id": "7161edbf-5bf2-49e1-9f1b-2a58d5e4a059",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "iAds_LoadInterstitial",
                    "help": "iAds_LoadInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_LoadInterstitial",
                    "returnType": 2
                },
                {
                    "id": "ffc6f31d-6ab4-43b1-806f-0f3a56e5d089",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "iAds_ShowInterstitial",
                    "help": "iAds_ShowInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_ShowInterstitial",
                    "returnType": 2
                },
                {
                    "id": "0d70479b-30f3-471d-b7a8-fada4c075a4b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "iAds_InterstitialStatus",
                    "help": "iAds_InterstitialStatus()",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_InterstitialStatus",
                    "returnType": 1
                },
                {
                    "id": "607faf4c-a375-4eda-a37e-65fd767a8681",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "iAds_AddBanner",
                    "help": "iAds_AddBanner()",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_AddBanner",
                    "returnType": 2
                },
                {
                    "id": "878cfb6a-d8ee-4fd4-ae69-fdb89c91b90d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "iAds_HideBanner",
                    "help": "iAds_HideBanner( bHide )",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_HideBanner",
                    "returnType": 2
                },
                {
                    "id": "c4010de7-0d36-4edc-88e1-3c40af4fb3f3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "iAds_MoveBanner",
                    "help": "iAds_MoveBanner( display_x, display_y )",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_MoveBanner",
                    "returnType": 2
                },
                {
                    "id": "40d61204-ca58-4a44-93a8-88cde276fb72",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "iAds_AddBannerAt",
                    "help": "iAds_AddBannerAt( display_x, display_y )",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_AddBannerAt",
                    "returnType": 2
                },
                {
                    "id": "6bca4215-fbda-4bcc-baa6-2a8417ac99f4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "iAds_BannerGetWidth",
                    "help": "iAds_BannerGetWidth()",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_BannerGetWidth",
                    "returnType": 2
                },
                {
                    "id": "68306a18-4cc7-4ee9-9551-eba7c1364b61",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "iAds_BannerGetHeight",
                    "help": "iAds_BannerGetHeight()",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_BannerGetHeight",
                    "returnType": 2
                },
                {
                    "id": "086c7736-6f67-42bf-bd5c-902e8b5eb409",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "iAds_RemoveBanner",
                    "help": "iAds_RemoveBanner()",
                    "hidden": false,
                    "kind": 11,
                    "name": "iAds_RemoveBanner",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\mMedia.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        {
            "id": "3e168b62-6e85-4e62-8341-27f2b9753768",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "iAd.framework",
            "weakReference": true
        }
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "C:\\Source\\GameMaker\\Extensions\\NewExtensions\\MMediaExtiOS",
    "supportedTargets": -1,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}