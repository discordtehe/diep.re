// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBMFONTCONFIGURATION_H
#define CCBMFONTCONFIGURATION_H


#import <Foundation/Foundation.h>


@interface CCBMFontConfiguration : NSObject {
    float _scale;
    *_FontDefHashElement _fontDefDictionary;
    NSInteger _commonHeight;
    _BMFontPadding _padding;
    *_KerningHashElement _kerningDictionary;
}


@property (readonly, retain, nonatomic) NSCharacterSet *characterSet; // ivar: _characterSet
@property (retain, nonatomic) NSString *atlasName; // ivar: _atlasName


-(id)initWithFNTfile:(id)arg0 ;
-(void)dealloc;
-(id)description;
-(void)purgeFontDefDictionary;
-(void)purgeKerningDictionary;
-(id)parseConfigFile:(id)arg0 ;
-(void)parseImageFileName:(id)arg0 fntFile:(id)arg1 ;
-(void)parseInfoArguments:(id)arg0 ;
-(void)parseCommonArguments:(id)arg0 ;
-(void)parseCharacterDefinition:(id)arg0 charDef:(struct _BMFontDef *)arg1 ;
-(void)parseKerningEntry:(id)arg0 ;
+(id)configurationWithFNTFile:(id)arg0 ;


@end


#endif