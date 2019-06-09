//
//  CHNetwork.h
//  AFNetworking
//
//  Created by 李长鸿 on 2019/6/9.
//

/*
 业务层依赖本网络库，为中间工具层，在集成到主框架的时候需要打到pod里来供dependents
 */

#import <UIKit/UIKit.h>
#import <XMNetworking/XMNetworking.h>

NS_ASSUME_NONNULL_BEGIN

@interface CHNetwork : NSObject
/**
 Creates and runs an Upload/Download `XMRequest` with progress/success/failure/finished blocks.
 
 NOTE: The success/failure/finished blocks will be called on `callbackQueue` of XMCenter.
 BUT !!! the progress block is called on the session queue, not the `callbackQueue` of XMCenter.
 
 @param configBlock The config block to setup context info for the new created XMRequest object.
 @param progressBlock Progress callback block for the new created XMRequest object.
 @param successBlock Success callback block for the new created XMRequest object.
 @param failureBlock Failure callback block for the new created XMRequest object.
 @param finishedBlock Finished callback block for the new created XMRequest object.
 @return Unique identifier for the new running XMRequest object,`nil` for fail.
 */
+ (nullable NSString *)sendRequest:(XMRequestConfigBlock)configBlock
                        onProgress:(nullable XMProgressBlock)progressBlock
                         onSuccess:(nullable XMSuccessBlock)successBlock
                         onFailure:(nullable XMFailureBlock)failureBlock
                        onFinished:(nullable XMFinishedBlock)finishedBlock;

/**
 Creates and runs batch requests
 
 @param configBlock The config block to setup batch requests context info for the new created XMBatchRequest object.
 @param successBlock Success callback block called when all batch requests finished successfully.
 @param failureBlock Failure callback block called once a request error occured.
 @param finishedBlock Finished callback block for the new created XMBatchRequest object.
 @return Unique identifier for the new running XMBatchRequest object,`nil` for fail.
 */
+ (nullable NSString *)sendBatchRequest:(XMBatchRequestConfigBlock)configBlock
                              onSuccess:(nullable XMBCSuccessBlock)successBlock
                              onFailure:(nullable XMBCFailureBlock)failureBlock
                             onFinished:(nullable XMBCFinishedBlock)finishedBlock;

/**
 Creates and runs chain requests
 
 @param configBlock The config block to setup chain requests context info for the new created XMBatchRequest object.
 @param successBlock Success callback block called when all chain requests finished successfully.
 @param failureBlock Failure callback block called once a request error occured.
 @param finishedBlock Finished callback block for the new created XMChainRequest object.
 @return Unique identifier for the new running XMChainRequest object,`nil` for fail.
 */
+ (nullable NSString *)sendChainRequest:(XMChainRequestConfigBlock)configBlock
                              onSuccess:(nullable XMBCSuccessBlock)successBlock
                              onFailure:(nullable XMBCFailureBlock)failureBlock
                             onFinished:(nullable XMBCFinishedBlock)finishedBlock;

/**
 Method to cancel a runnig request by identifier with a cancel block.
 
 NOTE: The cancel block is called on current thread who invoked the method, not the `callbackQueue` of XMCenter.
 
 @param identifier The unique identifier of a running request.
 @param cancelBlock The callback block to be executed after the running request is canceled. The canceled request object (if exist) will be passed in argument to the cancel block.
 */
+ (void)cancelRequest:(NSString *)identifier
             onCancel:(nullable XMCancelBlock)cancelBlock;

+ (nullable id)getRequest:(NSString *)identifier;

+ (BOOL)isNetworkReachable;

+ (XMNetworkConnectionType)networkConnectionType;

#pragma mark -

+ (void)addSSLPinningURL:(NSString *)url;
+ (void)addSSLPinningCert:(NSData *)cert;
+ (void)addTwowayAuthenticationPKCS12:(NSData *)p12 keyPassword:(NSString *)password;

@end

NS_ASSUME_NONNULL_END
