// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTMODEL_H
#define MPVASTMODEL_H


#import <Foundation/Foundation.h>


@interface MPVASTModel : NSObject



-(id)initWithDictionary:(id)arg0 ;
-(id)generateModelFromDictionaryValue:(id)arg0 modelProvider:(id)arg1 ;
-(id)generateModelsFromDictionaryValue:(id)arg0 modelProvider:(id)arg1 ;
-(BOOL)hasPropertyNamed:(id)arg0 ;
-(id)description;
+(id)modelMap;


@end


#endif