// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCLOGREPORTER_H
#define ADCLOGREPORTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCLogReporter : NSObject

@property (retain, nonatomic) NSArray *logs; // ivar: _logs
@property (retain, nonatomic) NSString *index; // ivar: _index


-(id)initWithLogs:(id)arg0 andIndex:(id)arg1 ;
-(void)startWithCompletionHandler:(id)arg0 ;
-(void)getContent:(id)arg0 ;


@end


#endif