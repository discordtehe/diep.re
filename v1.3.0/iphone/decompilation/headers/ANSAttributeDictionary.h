// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSATTRIBUTEDICTIONARY_H
#define ANSATTRIBUTEDICTIONARY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ANSAttributeDictionary : NSObject

@property (retain, nonatomic) NSMutableDictionary *rawDictionary; // ivar: _rawDictionary


-(id)init;
-(id)initWithDictionary:(id)arg0 ;
-(id)description;
-(id)dictionaryRepresentation;
-(void)addAttribute:(id)arg0 forKey:(id)arg1 ;
-(void)addBooleanAttribute:(id)arg0 forKey:(id)arg1 ;
-(void)addPriceAttribute:(id)arg0 forKey:(id)arg1 ;
-(BOOL)validAttributeValue:(id)arg0 ;
-(id)serializeAttributeValue:(id)arg0 ;
-(id)truncateString:(id)arg0 ;
-(id)serializeSuccess:(id)arg0 ;
-(id)serializePriceToMicros:(id)arg0 ;
-(id)serializeNumber:(id)arg0 ;


@end


#endif