// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJXMLDICTIONARYPARSER_H
#define TJXMLDICTIONARYPARSER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSXMLParserDelegate;

@interface TJXMLDictionaryParser : NSObject <NSXMLParserDelegate>



@property (retain, nonatomic) NSMutableDictionary *root; // ivar: root
@property (retain, nonatomic) NSMutableArray *stack; // ivar: stack
@property (readonly, nonatomic) NSMutableDictionary *top;
@property (retain, nonatomic) NSMutableString *text; // ivar: text
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithXMLData:(id)arg0 ;
-(void)endText;
-(void)addText:(id)arg0 ;
-(void)parser:(id)arg0 didStartElement:(id)arg1 namespaceURI:(id)arg2 qualifiedName:(id)arg3 attributes:(id)arg4 ;
-(id)nameForNode:(id)arg0 inDictionary:(id)arg1 ;
-(void)parser:(id)arg0 didEndElement:(id)arg1 namespaceURI:(id)arg2 qualifiedName:(id)arg3 ;
-(void)parser:(id)arg0 foundCharacters:(id)arg1 ;
-(void)parser:(id)arg0 foundCDATA:(id)arg1 ;
-(void)parser:(id)arg0 foundComment:(id)arg1 ;
+(id)dictionaryWithXMLData:(id)arg0 ;
+(id)dictionaryWithXMLFile:(id)arg0 ;
+(id)xmlStringForNode:(id)arg0 withNodeName:(id)arg1 ;


@end


#endif