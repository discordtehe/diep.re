// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSACTIVITY_H
#define ANSACTIVITY_H


#import <Foundation/Foundation.h>

@protocol NSObject;

@interface ANSActivity : NSObject

@property (retain, nonatomic) NSObject<NSObject> *processInfoToken; // ivar: _processInfoToken
@property (nonatomic) NSUInteger backgroundTaskIdentifier; // ivar: _backgroundTaskIdentifier
@property (readonly, nonatomic) NSUInteger options; // ivar: _options
@property (readonly, nonatomic) NSString *reason; // ivar: _reason


-(NSUInteger)beginBackgroundTaskWithName:(id)arg0 expirationHandler:(id)arg1 ;
-(id)initWithProcessToken:(id)arg0 options:(NSUInteger)arg1 reason:(id)arg2 backgroundTaskIdentifier:(NSUInteger)arg3 ;
-(void)dealloc;
-(void)end;
-(id)sharedAppInstance;
-(BOOL)supportsBackgroundTasks;
-(void)endAndInvalidateBackgroundTask;
-(void)endAndInvalidateInternalActivity;
+(id)beginActivity:(id)arg0 withOptions:(NSUInteger)arg1 expirationHandler:(id)arg2 ;
+(id)beginActivity:(id)arg0 withOptions:(NSUInteger)arg1 ;
+(void)performActivity:(id)arg0 options:(NSUInteger)arg1 withBlock:(id)arg2 ;
+(id)beginActivityIfAvailable:(id)arg0 options:(NSUInteger)arg1 ;


@end


#endif