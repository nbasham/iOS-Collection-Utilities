//
//    Copyright (c) 2012 Norman Basham
//    http://www.apache.org/licenses/LICENSE-2.0
//
#import "NSArray+Primitive.h"

@implementation NSArray(Primitive)

-(NSNumber*)_numberAtIndex:(NSUInteger)index {
    if(index >= self.count) {
        NSLog(@"index '%lu' out of bounds, array size %lu.", (unsigned long)index, (unsigned long)self.count);
    }
    NSNumber* n = self[index];
    return n;
}

-(NSValue*)_valueAtIndex:(NSUInteger)index {
    if(index >= self.count) {
        NSLog(@"index '%lu' out of bounds, array size %lu.", (unsigned long)index, (unsigned long)self.count);
    }
    NSValue* n = self[index];
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

-(NSInteger)integerAtIndex:(NSUInteger)index {
    NSNumber* n = [self _numberAtIndex:index];
    NSInteger i = [n integerValue];
    return i;
}

-(NSUInteger)unsignedIntegerAtIndex:(NSUInteger)index {
    NSNumber* n = [self _numberAtIndex:index];
    NSUInteger i = [n unsignedIntegerValue];
    return i;
}

-(CGFloat)cgFloatAtIndex:(NSUInteger)index {
    NSNumber* n = [self _numberAtIndex:index];
    int i = [n doubleValue];
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
    [self addObject:@(b)];
}

-(void)insertBool:(BOOL)b atIndex:(NSUInteger)index {
    [self insertObject:@(b) atIndex:index];
}

-(void)replaceBoolAtIndex:(NSUInteger)index withBool:(BOOL)b {
    self[index] = @(b);
}

-(void)addChar:(char)c {
    [self addObject:@(c)];
}

-(void)insertChar:(char)c atIndex:(NSUInteger)index {
    [self insertObject:@(c) atIndex:index];
}

-(void)replaceCharAtIndex:(NSUInteger)index withChar:(char)c {
    self[index] = @(c);
}

-(void)addInt:(int)i {
    [self addObject:@(i)];
}

-(void)insertInt:(int)i atIndex:(NSUInteger)index {
    [self insertObject:@(i) atIndex:index];
}

-(void)replaceIntAtIndex:(NSUInteger)index withInt:(int)i {
    self[index] = @(i);
}

-(void)addInteger:(NSInteger)i {
    [self addObject:@(i)];
}

-(void)insertInteger:(NSInteger)i atIndex:(NSUInteger)index {
    [self insertObject:@(i) atIndex:index];
}

-(void)replaceIntegerAtIndex:(NSUInteger)index withInteger:(NSInteger)i {
    self[index] = @(i);
}

-(void)addUnsignedInteger:(NSInteger)i {
    [self addObject:@(i)];
}

-(void)insertUnsignedInteger:(NSInteger)i atIndex:(NSUInteger)index {
    [self insertObject:@(i) atIndex:index];
}

-(void)replaceUnsignedIntegerAtIndex:(NSUInteger)index withUnsignedInteger:(NSInteger)i {
    self[index] = @(i);
}

-(void)addCGFloat:(CGFloat)f {
    [self addObject:@(f)];
}

-(void)insertCGFloat:(CGFloat)f atIndex:(NSUInteger)index {
    [self insertObject:@(f) atIndex:index];
}

-(void)replaceCGFloatAtIndex:(NSUInteger)index withCGFloat:(CGFloat)f {
    self[index] = @(f);
}

-(void)addFloat:(float)f {
    [self addObject:@(f)];
}

-(void)insertFloat:(float)f atIndex:(NSUInteger)index {
    [self insertObject:@(f) atIndex:index];
}

-(void)replaceFloatAtIndex:(NSUInteger)index withFloat:(float)f {
    self[index] = @(f);
}

-(void)addValue:(NSValue*)o {
    [self addObject:o];
}

-(void)insertValue:(NSValue*)o atIndex:(NSUInteger)index {
    [self insertObject:o atIndex:index];
}

-(void)replaceValueAtIndex:(NSUInteger)index withValue:(NSValue*)o {
    self[index] = o;
}

-(void)addPoint:(CGPoint)o {
    [self addObject:[NSValue valueWithCGPoint:o]];
}

-(void)insertPoint:(CGPoint)o atIndex:(NSUInteger)index{
    [self insertObject:[NSValue valueWithCGPoint:o] atIndex:index];
}

-(void)replacePointAtIndex:(NSUInteger)index withPoint:(CGPoint)o {
    self[index] = [NSValue valueWithCGPoint:o];
}

-(void)addSize:(CGSize)o {
    [self addObject:[NSValue valueWithCGSize:o]];
}

-(void)insertSize:(CGSize)o atIndex:(NSUInteger)index{
    [self insertObject:[NSValue valueWithCGSize:o] atIndex:index];
}

-(void)replaceSizeAtIndex:(NSUInteger)index withSize:(CGSize)o {
    self[index] = [NSValue valueWithCGSize:o];
}

-(void)addRect:(CGRect)o {
    [self addObject:[NSValue valueWithCGRect:o]];
}

-(void)insertRect:(CGRect)o atIndex:(NSUInteger)index{
    [self insertObject:[NSValue valueWithCGRect:o] atIndex:index];
}

-(void)replaceRectAtIndex:(NSUInteger)index withRect:(CGRect)o {
    self[index] = [NSValue valueWithCGRect:o];
}

-(void)swapIndex1:(NSUInteger)index1 index2:(NSUInteger)index2 {
    NSNumber* n1 = self[index1];
    NSNumber* n2 = self[index2];
    self[index1] = n2;
    self[index2] = n1;
}

@end
