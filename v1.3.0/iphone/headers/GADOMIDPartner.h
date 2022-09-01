// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDPARTNER_H
#define GADOMIDPARTNER_H


#import <Foundation/Foundation.h>


@interface GADOMIDPartner : NSObject

@property (readonly, nonatomic) NSString *name; // ivar: _name
@property (readonly, nonatomic) NSString *versionString; // ivar: _versionString


-(id)initWithName:(id)arg0 versionString:(id)arg1 ;
-(id)toJSON;


@end


#endif