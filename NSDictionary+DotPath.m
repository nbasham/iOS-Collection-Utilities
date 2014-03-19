#import "NSDictionary+DotPath.h"

@implementation NSDictionary (DotPath)

-(id)objectForPath:(NSString*)dotPath {
    NSString* path = [self getParentPath:dotPath];
    NSMutableDictionary* d = [self _dictAtPath:path];
    NSString* key = [self getPathKey:dotPath];
    id o = d[key];
    return o;
}

-(BOOL)boolForPath:(NSString*)dotPath {
    BOOL i = [[self objectForPath:dotPath] boolValue];
    return i;
}

-(int)intForPath:(NSString*)dotPath {
    int i = [[self objectForPath:dotPath] intValue];
    return i;
}

-(NSInteger)integerForPath:(NSString*)dotPath {
    int i = [[self objectForPath:dotPath] integerValue];
    return i;
}

-(NSUInteger)unsignedIntegerForPath:(NSString*)dotPath {
    int i = [[self objectForPath:dotPath] unsignedIntegerValue];
    return i;
}

-(CGFloat)cgFloatForPath:(NSString*)dotPath {
    int i = [[self objectForPath:dotPath] doubleValue];
    return i;
}

-(int)charForPath:(NSString*)dotPath {
    char i = [[self objectForPath:dotPath] charValue];
    return i;
}

-(float)floatForPath:(NSString*)dotPath {
    float i = [[self objectForPath:dotPath] floatValue];
    return i;
}

-(CGPoint)pointForPath:(NSString*)dotPath {
    CGPoint o = CGPointFromString([self objectForPath:dotPath]);
    return o;
}

-(CGSize)sizeForPath:(NSString*)dotPath {
    CGSize o = CGSizeFromString([self objectForPath:dotPath]);
    return o;
}

-(CGRect)rectForPath:(NSString*)dotPath {
    CGRect o = CGRectFromString([self objectForPath:dotPath]);
    return o;
}

-(id)_dictAtPath:(NSString*)path {
    if(path != nil && path.length > 0) {
        NSArray* chunks = [path componentsSeparatedByString:@"."];
        NSDictionary* parent = self;
        NSDictionary* d = nil;
        for (NSString* key in chunks) {
            d = (NSDictionary*)parent[key];
            if(d == nil) {
                d = [NSMutableDictionary dictionary];
                ((NSMutableDictionary*)parent)[key] = d;
            }
            parent = d;
        }
        return d;
    }
    return self;
}

-(NSString*)getParentPath:(NSString*)path {
    NSString* s = [path stringByDeletingPathExtension];
    if([s isEqualToString:path]) {
        return nil;
    } else {
        return s;
    }
}

-(NSString*)getPathKey:(NSString*)path {
    NSString* key = [path pathExtension];
    if(key == nil || key.length < 1) {
        return path;
    }
    return key;
}

@end

@implementation NSMutableDictionary(DotPath)

-(void)setObject:(id)anObject forPath:(NSString*)dotPath {
    NSString* path = [self getParentPath:dotPath];
    NSMutableDictionary* d = [self _dictAtPath:path];
    BOOL isMutable = [d respondsToSelector:@selector(setObject:forKey:)];
    if(!isMutable) {
        d = [NSMutableDictionary dictionaryWithDictionary:d];
        self[path] = d;
    }
    NSString* key = [self getPathKey:dotPath];
    d[key] = anObject;    
}

-(void)setBool:(BOOL)i forPath:(NSString*)dotPath {
    [self setObject:@(i) forPath:dotPath];
}

-(void)setInt:(int)i forPath:(NSString*)dotPath {
    [self setObject:@(i) forPath:dotPath];
}

-(void)setInteger:(int)i forPath:(NSString*)dotPath {
    [self setObject:@(i) forPath:dotPath];
}

-(void)setUnsignedInteger:(int)i forPath:(NSString*)dotPath {
    [self setObject:@(i) forPath:dotPath];
}

-(void)setCGFloat:(CGFloat)f forPath:(NSString*)dotPath {
    [self setObject:@(f) forPath:dotPath];
}

-(void)setChar:(char)c forPath:(NSString*)dotPath {
    [self setObject:@(c) forPath:dotPath];
}

-(void)setFloat:(float)i forPath:(NSString*)dotPath {
    [self setObject:@(i) forPath:dotPath];
}

-(void)setPoint:(CGPoint)o forPath:(NSString*)dotPath {
    [self setObject:NSStringFromCGPoint(o) forPath:dotPath];
}

-(void)setSize:(CGSize)o forPath:(NSString*)dotPath {
    [self setObject:NSStringFromCGSize(o) forPath:dotPath];
}

-(void)setRect:(CGRect)o forPath:(NSString*)dotPath {
    [self setObject:NSStringFromCGRect(o) forPath:dotPath];
}

@end
