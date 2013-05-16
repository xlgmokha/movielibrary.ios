#import "Kiwi.h"


@interface Book : NSObject
@end

@implementation Book
@end

@interface MovieLibrary : NSObject
-(void)add:(Book*)book;
-(int)total_books;
@end

@implementation MovieLibrary
-(void)add:(Book*)book
{
}
-(int)total_books
{
  return 1;
}
@end


SPEC_BEGIN(MovieLibrarySpec)

describe(@"MovieLibrary", ^{
    it(@"should be able to add a book", ^{
      MovieLibrary * library = [MovieLibrary new];
      Book *book = [Book new];
      [library add:book];
      int result = [library total_books];
      [[theValue(result) should] equal:theValue(1)];
    });
});

SPEC_END
