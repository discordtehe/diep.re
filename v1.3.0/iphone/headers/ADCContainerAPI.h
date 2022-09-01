// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCCONTAINERAPI_H
#define ADCCONTAINERAPI_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ADCContainerDelegate;

@interface ADCContainerAPI : NSObject <ADCContainerDelegate>

 {
    NSMutableArray *_trackedTouches;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)container:(id)arg0 touchesBegan:(id)arg1 inView:(id)arg2 ;
-(void)container:(id)arg0 touchesMoved:(id)arg1 inView:(id)arg2 ;
-(void)container:(id)arg0 touchesEnded:(id)arg1 inView:(id)arg2 ;
-(void)container:(id)arg0 touchesCancelled:(id)arg1 inView:(id)arg2 ;
-(void)containerResized:(id)arg0 ;
+(id)privateAPI;
+(BOOL)createWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)destroyWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)moveViewToIndexWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)moveViewToFrontWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;


@end


#endif