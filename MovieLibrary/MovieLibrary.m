#import "Movie.h"
#import "MovieLibrary.h"

@implementation MovieLibrary
-(id)init
{
  self = [super init];
  if(self) {
    _items = [[NSMutableArray alloc]init];
  }
  return self;
}
-(void)add:(Movie*)movie
{
  [_items addObject:movie];
}
-(int)total_movies
{
  return [_items count];
}
-(BOOL)includes:(Movie*)movie
{
  return [_items containsObject:movie];
}
@end
