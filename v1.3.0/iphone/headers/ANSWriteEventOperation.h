// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSWRITEEVENTOPERATION_H
#define ANSWRITEEVENTOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ANSEvent;
@protocol ANSMetadataSerializable;

@interface ANSWriteEventOperation : NSOperation

@property (retain, nonatomic) ANSEvent *event; // ivar: _event
@property (retain, nonatomic) NSURL *logFileUrl; // ivar: _logFileUrl
@property (nonatomic) BOOL success; // ivar: _success
@property (retain, nonatomic) NSString *formattedEvent; // ivar: _formattedEvent
@property (retain, nonatomic) NSString *formattedMetadata; // ivar: _formattedMetadata
@property (readonly, nonatomic) NSObject<ANSMetadataSerializable> *metadata; // ivar: _metadata


-(id)initWithEvent:(id)arg0 metadata:(id)arg1 logFileUrl:(id)arg2 ;
-(void)main;
-(BOOL)writeDataToDescriptor:(int)arg0 withPreexistingFile:(BOOL)arg1 ;
-(BOOL)appendLogLine:(id)arg0 toFileDescriptor:(int)arg1 ;
-(id)generateFormattedLogLineWithEvent:(id)arg0 ;
-(id)generateFormattedLogLineWithMetdata:(id)arg0 timestamp:(id)arg1 ;
-(id)logLineWithTimestamp:(id)arg0 eventName:(id)arg1 payloadDictionary:(id)arg2 ;


@end


#endif