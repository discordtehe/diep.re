// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCLOG_H
#define ADCLOG_H


#import <Foundation/Foundation.h>


@interface ADCLog : NSObject

@property (retain, nonatomic) NSString *index; // ivar: _index
@property (nonatomic) NSInteger level; // ivar: _level
@property (retain, nonatomic) NSString *message; // ivar: _message


-(id)initWithLogLevel:(NSInteger)arg0 andMessage:(id)arg1 ;
-(id)initFromDict:(id)arg0 ;
-(void)getDict:(id)arg0 ;
-(id)getDictWithDeviceInfo:(id)arg0 ;
-(id)getLogLevelString;
-(id)remappedKeysFromDeviceInfo;


@end


#endif