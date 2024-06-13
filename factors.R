c <- factor(c("Python", "R", "Laraval", "DIP", "DIP", "R"))
c
levels(c)
music_genre <- factor(c("Kpop", "Indie", "Pop","Kpop","Classic", "RnB", "Jazz", "Pop"))
levels=c("Kpop","Pop", "Classic", "Indie")
levels(music_genre)
length(music_genre)
music_genre[3]

music_genre[7] <- "RnB"
music_genre[7]

music_genre