#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "CHNetwork.h"
#import "CHNetworkGlobalConfig.h"

FOUNDATION_EXPORT double CHNetworkVersionNumber;
FOUNDATION_EXPORT const unsigned char CHNetworkVersionString[];

