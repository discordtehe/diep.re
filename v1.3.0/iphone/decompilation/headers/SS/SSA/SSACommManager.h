// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSACOMMMANAGER_H
#define SSACOMMMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSURLConnectionDataDelegate;

@interface SSACommManager : NSObject <NSURLConnectionDataDelegate>



@property (retain, nonatomic) NSURLConnection *connection; // ivar: _connection
@property (nonatomic) NSUInteger length; // ivar: _length
@property (retain, nonatomic) NSDate *startTime; // ivar: _startTime
@property (copy, nonatomic) id *bandwidthCompletionBlock; // ivar: _bandwidthCompletionBlock
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)testBandwidthWithCompletionBlock:(id)arg0 ;
-(CGFloat)determineMegabytesPerSecond;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;
-(void)connectionDidFinishLoading:(id)arg0 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
+(id)sharedManager;


@end


#endif