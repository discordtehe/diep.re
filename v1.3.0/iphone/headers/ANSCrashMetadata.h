// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSCRASHMETADATA_H
#define ANSCRASHMETADATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ANSMetadataSerializable;

@interface ANSCrashMetadata : NSObject <ANSMetadataSerializable>



@property (readonly, nonatomic) NSDictionary *rawMetadataDictionary; // ivar: _rawMetadataDictionary
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDictionary:(id)arg0 ;
-(id)eventName;
-(id)dictionaryRepresentationWithStartTime:(NSUInteger)arg0 ;
+(id)readSerializedDictionaryFromURL:(id)arg0 ;
+(BOOL)writeSerializedDictionary:(id)arg0 toURL:(id)arg1 ;


@end


#endif