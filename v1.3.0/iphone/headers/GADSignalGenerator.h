// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSIGNALGENERATOR_H
#define GADSIGNALGENERATOR_H


#import <Foundation/Foundation.h>

@class GADSignalConfiguration;

@interface GADSignalGenerator : NSObject {
    GADSignalConfiguration *_configuration;
}




-(id)initWithSignalConfiguration:(id)arg0 ;
-(void)generateSignalsWithCompletionHandler:(id)arg0 ;


@end


#endif