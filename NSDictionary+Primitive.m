#import "NSDictionary+Primitive.h"

@implementation NSDictionary (Primitive)

-(BOOL)hasKey:(NSString*)key {
    NSObject* o = [self objectForKey:key];
    BOOL has = o != nil;
    return has;
}

-(BOOL)boolForKey:(NSString*)key {
    BOOL i = [[self objectForKey:key] boolValue];
    return i;
}

-(int)intForKey:(NSString*)key {
    int i = [[self objectForKey:key] intValue];
    return i;
}

-(int)charForKey:(NSString*)key {
    char i = [[self objectForKey:key] charValue];
    return i;
}

-(float)floatForKey:(NSString*)key {
    float i = [[self objectForKey:key] floatValue];
    return i;
}

-(CGPoint)pointForKey:(NSString*)key {
    CGPoint o = CGPointFromString([self objectForKey:key]);
    return o;
}

-(CGSize)sizeForKey:(NSString*)key {
    CGSize o = CGSizeFromString([self objectForKey:key]);
    return o;
}

-(CGRect)rectForKey:(NSString*)key {
    CGRect o = CGRectFromString([self objectForKey:key]);
    return o;
}


@end

@implementation NSMutableDictionary(Primitive)

-(void)setBool:(BOOL)i forKey:(NSString*)key {
    [self setObject:[NSNumber numberWithBool:i] forKey:key];
}

-(void)setInt:(int)i forKey:(NSString*)key {
    [self setObject:[NSNumber numberWithInt:i] forKey:key];
}

-(void)setChar:(char)c forKey:(NSString*)key {
    [self setObject:[NSNumber numberWithChar:c] forKey:key];
}

-(void)setFloat:(float)i forKey:(NSString*)key {
    [self setObject:[NSNumber numberWithFloat:i] forKey:key];
}

-(void)setPoint:(CGPoint)o forKey:(NSString*)key{
    [self setObject:NSStringFromCGPoint(o) forKey:key];
}

-(void)setSize:(CGSize)o forKey:(NSString*)key {
    [self setObject:NSStringFromCGSize(o) forKey:key];
}

-(void)setRect:(CGRect)o forKey:(NSString*)key {
    [self setObject:NSStringFromCGRect(o) forKey:key];
}


@end
