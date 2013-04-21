//
//    Copyright (c) 2012 Norman Basham
//    http://www.apache.org/licenses/LICENSE-2.0
//
#import "NSArray+Primitive.h"

@implementation NSArray(Primitive)

-(NSNumber*)_numberAtIndex:(NSUInteger)index {
    if(index >= self.count) {
        NSLog(@"index '%d' out of bounds, array size %d.", index, self.count);
    }
    NSNumber* n = [self objectAtIndex:index];
    return n;
}

-(NSValue*)_valueAtIndex:(NSUInteger)index {
    if(index >= self.count) {
        NSLog(@"index '%d' out of bounds, array size %d.", index, self.count);
    }
    NSValue* n = [self objectAtIndex:index];
    return n;
}

-(BOOL)boolAtIndex:(NSUInteger)index {
    NSNumber* n = [self _numberAtIndex:index];
    BOOL b = [n boolValue];
    return b;
}

-(char)charAtIndex:(NSUInteger)index {
    NSNumber* n = [self _numberAtIndex:index];
    char c = [n charValue];
    return c;
}

-(int)intAtIndex:(NSUInteger)index {
    NSNumber* n = [self _numberAtIndex:index];
    int i = [n intValue];
    return i;
}

-(float)floatAtIndex:(NSUInteger)index {
    NSNumber* n = [self _numberAtIndex:index];
    float i = [n floatValue];
    return i;
}

-(NSValue*)valueAtIndex:(NSUInteger)index {
    return [self _valueAtIndex:index];
}

-(CGPoint)pointAtIndex:(NSUInteger)index {
    return [[self _valueAtIndex:index] CGPointValue];
}

-(CGSize)sizeAtIndex:(NSUInteger)index {
    return [[self _valueAtIndex:index] CGSizeValue];
}

-(CGRect)rectAtIndex:(NSUInteger)index {
    return [[self _valueAtIndex:index] CGRectValue];
}

-(NSString*)intArrayToString {
    NSMutableString* s = [NSMutableString stringWithCapacity:self.count];
    for (NSNumber* n in self) {
        int i = [n intValue];
        [s appendFormat:@"%d ", i];
    }
    return s;
}

@end

@implementation NSMutableArray(Primitive)

-(void)addBool:(BOOL)b {
    [self addObject:[NSNumber numberWithBool:b]];
}

-(void)insertBool:(BOOL)b atIndex:(NSUInteger)index {
    [self insertObject:[NSNumber numberWithBool:b] atIndex:index];
}

-(void)replaceBoolAtIndex:(NSUInteger)index withBool:(BOOL)b {
    [self replaceObjectAtIndex:index withObject:[NSNumber numberWithBool:b]];
}

-(void)addChar:(char)c {
    [self addObject:[NSNumber numberWithChar:c]];
}

-(void)insertChar:(char)c atIndex:(NSUInteger)index {
    [self insertObject:[NSNumber numberWithChar:c] atIndex:index];
}

-(void)replaceCharAtIndex:(NSUInteger)index withChar:(char)c {
    [self replaceObjectAtIndex:index withObject:[NSNumber numberWithChar:c]];
}

-(void)addInt:(int)i {
    [self addObject:[NSNumber numberWithInt:i]];
}

-(void)insertInt:(int)i atIndex:(NSUInteger)index {
    [self insertObject:[NSNumber numberWithInt:i] atIndex:index];
}

-(void)replaceIntAtIndex:(NSUInteger)index withInt:(int)i {
    [self replaceObjectAtIndex:index withObject:[NSNumber numberWithInt:i]];
}

-(void)addFloat:(float)f {
    [self addObject:[NSNumber numberWithFloat:f]];
}

-(void)insertFloat:(float)f atIndex:(NSUInteger)index {
    [self insertObject:[NSNumber numberWithFloat:f] atIndex:index];
}

-(void)replaceFloatAtIndex:(NSUInteger)index withFloat:(float)f {
    [self replaceObjectAtIndex:index withObject:[NSNumber numberWithFloat:f]];
}

-(void)addValue:(NSValue*)o {
    [self addObject:o];
}

-(void)insertValue:(NSValue*)o atIndex:(NSUInteger)index {
    [self insertObject:o atIndex:index];
}

-(void)replaceValueAtIndex:(NSUInteger)index withValue:(NSValue*)o {
    [self replaceObjectAtIndex:index withObject:o];
}

-(void)addPoint:(CGPoint)o {
    [self addObject:[NSValue valueWithCGPoint:o]];
}

-(void)insertPoint:(CGPoint)o atIndex:(NSUInteger)index{
    [self insertObject:[NSValue valueWithCGPoint:o] atIndex:index];
}

-(void)replacePointAtIndex:(NSUInteger)index withPoint:(CGPoint)o {
    [self replaceObjectAtIndex:index withObject:[NSValue valueWithCGPoint:o]];
}

-(void)addSize:(CGSize)o {
    [self addObject:[NSValue valueWithCGSize:o]];
}

-(void)insertSize:(CGSize)o atIndex:(NSUInteger)index{
    [self insertObject:[NSValue valueWithCGSize:o] atIndex:index];
}

-(void)replaceSizeAtIndex:(NSUInteger)index withSize:(CGSize)o {
    [self replaceObjectAtIndex:index withObject:[NSValue valueWithCGSize:o]];
}

-(void)addRect:(CGRect)o {
    [self addObject:[NSValue valueWithCGRect:o]];
}

-(void)insertRect:(CGRect)o atIndex:(NSUInteger)index{
    [self insertObject:[NSValue valueWithCGRect:o] atIndex:index];
}

-(void)replaceRectAtIndex:(NSUInteger)index withRect:(CGRect)o {
    [self replaceObjectAtIndex:index withObject:[NSValue valueWithCGRect:o]];
}

-(void)swapIndex1:(NSUInteger)index1 index2:(NSUInteger)index2 {
    NSNumber* n1 = [self objectAtIndex:index1];
    NSNumber* n2 = [self objectAtIndex:index2];
    [self replaceObjectAtIndex:index1 withObject:n2];
    [self replaceObjectAtIndex:index2 withObject:n1];
}

@end
