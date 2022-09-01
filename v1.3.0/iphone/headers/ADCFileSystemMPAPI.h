// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCFILESYSTEMMPAPI_H
#define ADCFILESYSTEMMPAPI_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface ADCFileSystemMPAPI : NSObject {
    NSObject<OS_dispatch_queue> *_serialQueue;
}




-(id)init;
-(void)unpackBundle:(struct ? )arg0 ;
+(void)registerHandlers;
+(void)load;


@end


#endif