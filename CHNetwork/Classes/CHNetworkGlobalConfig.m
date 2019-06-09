//
//  CHNetworkGlobalConfig.m
//  AFNetworking
//
//  Created by 李长鸿 on 2019/6/8.
//

#import "CHNetworkGlobalConfig.h"
#import <XMNetworking/XMNetworking.h>

@interface CHNetworkGlobalConfig()

@end

@implementation CHNetworkGlobalConfig

//全局网络配置
+ (void)setupConfig
{
    [XMCenter setupConfig:^(XMConfig *config) {
        config.generalServer = @"general server address";
        config.generalHeaders = @{@"general-header": @"general header value"};
        config.generalParameters = @{@"general-parameter": @"general parameter value"};
        config.generalUserInfo = nil;
        config.callbackQueue = dispatch_get_main_queue();
#ifdef DEBUG
        config.consoleLog = YES;
#endif
    }];
}


@end
