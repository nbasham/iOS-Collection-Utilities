//
//    Copyright (c) 2012 Norman Basham
//    http://www.apache.org/licenses/LICENSE-2.0
//
#import <Foundation/Foundation.h>

@interface NSArray(Primitive)

-(BOOL)boolAtIndex:(NSUInteger)index;
-(char)charAtIndex:(NSUInteger)index;
-(int)intAtIndex:(NSUInteger)index;
-(float)floatAtIndex:(NSUInteger)index;
-(NSString*)intArrayToString;
-(NSValue*)valueAtIndex:(NSUInteger)index;
-(CGPoint)pointAtIndex:(NSUInteger)index;
-(CGSize)sizeAtIndex:(NSUInteger)index;
-(CGRect)rectAtIndex:(NSUInteger)index;

@end

@interface NSMutableArray(Primitive)

-(void)swapIndex1:(NSUInteger)index1 index2:(NSUInteger)index2;

-(void)addBool:(BOOL)b;
-(void)insertBool:(BOOL)b atIndex:(NSUInteger)index;
-(void)replaceBoolAtIndex:(NSUInteger)index withBool:(BOOL)b;

-(void)addChar:(char)c;
-(void)insertChar:(char)c atIndex:(NSUInteger)index;
-(void)replaceCharAtIndex:(NSUInteger)index withChar:(char)c;

-(void)addInt:(int)i;
-(void)insertInt:(int)i atIndex:(NSUInteger)index;
-(void)replaceIntAtIndex:(NSUInteger)index withInt:(int)i;

-(void)addFloat:(float)f;
-(void)insertFloat:(float)f atIndex:(NSUInteger)index;
-(void)replaceFloatAtIndex:(NSUInteger)index withFloat:(float)f;

-(void)addValue:(NSValue*)o;
-(void)insertValue:(NSValue*)o atIndex:(NSUInteger)index;
-(void)replaceValueAtIndex:(NSUInteger)index withValue:(NSValue*)o;

-(void)addPoint:(CGPoint)o;
-(void)insertPoint:(CGPoint)o atIndex:(NSUInteger)index;
-(void)replacePointAtIndex:(NSUInteger)index withPoint:(CGPoint)o;

-(void)addSize:(CGSize)o;
-(void)insertSize:(CGSize)o atIndex:(NSUInteger)index;
-(void)replaceSizeAtIndex:(NSUInteger)index withSize:(CGSize)o;

-(void)addRect:(CGRect)o;
-(void)insertRect:(CGRect)o atIndex:(NSUInteger)index;
-(void)replaceRectAtIndex:(NSUInteger)index withRect:(CGRect)o;

@end