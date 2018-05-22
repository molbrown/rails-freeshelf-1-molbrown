Author.delete_all
authors = Author.create([
    {name: 'Tomas Varaneckas'},
    {name: 'Zed Shaw'},
    {name: 'Frederick John'},
    {name: 'Chris Pine'}
])

books = Book.create([
    {title: 'Developing Games Wih Ruby', author: authors[0], language: 'Ruby', description: 'At day you have to wrangle with legacy code, fix bugs, struggle with APIs, deploy services and integrate things. Yet you wish you could create worlds, animate dragons, brake laws of physics and design artificial intelligence. You can.', url: 'https://leanpub.com/developing-games-with-ruby/read'},
    {title: 'Learn Ruby the Hard Way', author: authors[1], language: 'Ruby', description: 'Zed Shaw has perfected the world’s best system for learning Ruby. Follow it and you will succeed–just like the hundreds of thousands of beginners Zed has taught to date! You bring the discipline, commitment, and persistence; the author supplies everything else.', url: 'https://learnrubythehardway.org/book/'},
    {title: 'Learn Ruby First', author: authors[2], language: 'Ruby', description: 'Learn Ruby First focuses on core programming concepts and essential domain fundamentals. It guides the reader on a comprehensive journey, exploring the basics of programming through the Ruby language. By the end, the reader is endowed with the ability to confidently write Ruby programs.', url: 'https://www.learnruby.today/'},
    {title: 'Learn to Program', author: authors[3], language: 'Ruby', description: 'It’s now easier to learn to write your own computer software than it has ever been before. Now everyone can learn to write programs for themselves—-no previous experience is necessary. Chris takes a thorough, but light-hearted approach that teaches you how to program with a minimum of fuss or bother.', url: 'https://pine.fm/LearnToProgram/'}
])
