//
//  CHNetwork.m
//  AFNetworking
//
//  Created by 李长鸿 on 2019/6/9.
//

#import "CHNetwork.h"

@implementation CHNetwork

+ (NSString *)sendRequest:(XMRequestConfigBlock)configBlock onProgress:(XMProgressBlock)progressBlock onSuccess:(XMSuccessBlock)successBlock onFailure:(XMFailureBlock)failureBlock onFinished:(XMFinishedBlock)finishedBlock
{
    return [XMCenter sendRequest:configBlock onProgress:progressBlock onSuccess:successBlock onFailure:failureBlock onFinished:finishedBlock];
}

+ (NSString *)sendBatchRequest:(XMBatchRequestConfigBlock)configBlock onSuccess:(XMBCSuccessBlock)successBlock onFailure:(XMBCFailureBlock)failureBlock onFinished:(XMBCFinishedBlock)finishedBlock
{
    return [XMCenter sendBatchRequest:configBlock onSuccess:successBlock onFailure:failureBlock onFinished:finishedBlock];
}

+ (NSString *)sendChainRequest:(XMChainRequestConfigBlock)configBlock onSuccess:(XMBCSuccessBlock)successBlock onFailure:(XMBCFailureBlock)failureBlock onFinished:(XMBCFinishedBlock)finishedBlock
{
    return [XMCenter sendChainRequest:configBlock onSuccess:successBlock onFailure:failureBlock onFinished:finishedBlock];
}

+ (void)cancelRequest:(NSString *)identifier onCancel:(XMCancelBlock)cancelBlock
{
    return [XMCenter cancelRequest:identifier onCancel:cancelBlock];
}
+ (nullable id)getRequest:(NSString *)identifier {
    return [XMCenter getRequest:identifier];
}

+ (BOOL)isNetworkReachable {
    return [XMCenter isNetworkReachable];
}

+ (XMNetworkConnectionType)networkConnectionType {
    return [XMCenter networkConnectionType];
}

#pragma mark -

+ (void)addSSLPinningURL:(NSString *)url{
    [XMCenter addSSLPinningURL:url];
}

+ (void)addSSLPinningCert:(NSData *)cert{
    [XMCenter addSSLPinningCert:cert];
}

+ (void)addTwowayAuthenticationPKCS12:(NSData *)p12 keyPassword:(NSString *)password {
    [XMCenter addTwowayAuthenticationPKCS12:p12 keyPassword:password];
}


@end
