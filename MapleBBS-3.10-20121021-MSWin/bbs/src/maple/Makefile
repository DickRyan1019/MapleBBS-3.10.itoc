# ------------------------------------------------------ #
#  maple/Makefile	( NTHU CS MapleBBS Ver 3.10 )    #
# ------------------------------------------------------ #
#  author : opus.bbs@bbs.cs.nthu.edu.tw		 	 #
#  target : Makefile for MapleBBS main programs		 #
#  create : 95/03/29				 	 #
#  update : 95/12/15					 #
# ------------------------------------------------------ #

# ------------------------------------------------------ #
# 下列的 make rules 不需修改				 #
# ------------------------------------------------------ #


CC =	gcc

SRC =	acct.c bbsd.c bmw.c board.c cache.c edit.c favor.c \
	gem.c mail.c menu.c more.c pal.c post.c talk.c ulist.c \
	user.c visio.c window.c xover.c xpost.c \
	../so/admutil.c ../so/aloha.c ../so/bank.c ../so/chat.c ../so/help.c ../so/innbbs.c ../so/manage.c ../so/newbrd.c \
	../so/song.c ../so/vote.c ../so/xyz.c \
	../so/calendar.c ../so/classtable.c ../so/credit.c ../so/todo.c \
	../game/bar.c ../game/bingo.c ../game/bj.c ../game/bwboard.c ../game/chessmj.c ../game/dice.c ../game/dragon.c ../game/fantan.c \
	../game/gp.c ../game/guessnum.c ../game/km.c ../game/liteon.c ../game/marie.c ../game/mine.c ../game/nine.c ../game/pushbox.c \
	../game/race.c ../game/recall.c ../game/reversi.c ../game/seven.c ../game/tetris.c \
	../pip/pip_basic.c ../pip/pip_ending.c ../pip/pip_fight.c ../pip/pip_item.o ../pip/pip_job.o \
	../pip/pip_menu.c ../pip/pip_pk.c ../pip/pip_play.c ../pip/pip_prac.c ../pip/pip_quest.c ../pip/pip_race.c \
	../pip/pip_royal.c ../pip/pip_stuff.c ../pip/pip_visio.c ../pip/pip_weapon.c ../pip/pip.c

OBJ =	acct.o bbsd.o bmw.o board.o cache.o edit.o favor.o \
	gem.o mail.o menu.o more.o pal.o post.o talk.o ulist.o \
	user.o visio.o window.o xover.o xpost.o \
	../so/admutil.o ../so/aloha.o ../so/bank.o ../so/chat.o ../so/help.o ../so/innbbs.o ../so/manage.o ../so/newbrd.o \
	../so/song.o ../so/vote.o ../so/xyz.o \
	../so/calendar.o ../so/classtable.o ../so/credit.o ../so/todo.o \
	../game/bar.o ../game/bingo.o ../game/bj.o ../game/bwboard.o ../game/chessmj.o ../game/dice.o ../game/dragon.o ../game/fantan.o \
	../game/gp.o ../game/guessnum.o ../game/km.o ../game/liteon.o ../game/marie.o ../game/mine.o ../game/nine.o ../game/pushbox.o \
	../game/race.o ../game/recall.o ../game/reversi.o ../game/seven.o ../game/tetris.o \
	../pip/pip_basic.o ../pip/pip_ending.o ../pip/pip_fight.o ../pip/pip_item.o ../pip/pip_job.o \
	../pip/pip_menu.o ../pip/pip_pk.o ../pip/pip_play.o ../pip/pip_prac.o ../pip/pip_quest.o ../pip/pip_race.o \
	../pip/pip_royal.o ../pip/pip_stuff.o ../pip/pip_visio.o ../pip/pip_weapon.o ../pip/pip.o

EXE =	bbsd


all: 
	@echo "Please enter 'make sys-type', "
	@echo " make sun     : for Sun-OS 4.x and maybe some BSD systems, cc or gcc" 
	@echo " make linux   : for Linux"
	@echo " make solaris : for Sun-OS 5.x gcc" 
	@echo " make sol-x86 : for Solaris 7 x86"
	@echo " make freebsd : for BSD 4.4 systems"
	@echo " make bsd     : for BSD systems, cc or gcc, if not in the above lists"
	@echo " make cygwin  : for Microsoft Windows and Cygwin gcc"

sun:
	@$(MAKE) CFLAGS="-O2 -pipe -fomit-frame-pointer -Wunused -Wno-unused-result -Wno-parentheses -I../include" LDFLAGS="-s -L../lib -ldao" $(EXE)

linux:
	@$(MAKE) CFLAGS="-DLINUX -O2 -pipe -fomit-frame-pointer -Wunused -Wno-unused-result -Wno-parentheses -I../include" LDFLAGS="-s -L../lib -ldao -lcrypt -lresolv -ldl -rdynamic" $(EXE)

solaris:
	@$(MAKE) CFLAGS="-DSOLARIS -DSYSV -O2 -pipe -fomit-frame-pointer -Wunused -Wno-unused-result -Wno-parentheses -I../include" LDFLAGS="-s -L../lib -ldao -ltermcap -lsocket -lnsl -lresolv -lelf -ldl" $(EXE)

sol-x86:
	@$(MAKE) CFLAGS="-DSOLARIS -DSYSV -O2 -fomit-frame-pointer -Wunused -Wno-unused-result -Wno-parentheses -I../include" LDFLAGS="-s -L../lib -ldao -ltermcap -lsocket -lnsl -lresolv -lelf -ldl" $(EXE)

freebsd:
	@$(MAKE) CFLAGS="-DBSD44 -O2 -pipe -fomit-frame-pointer -Wunused -Wno-unused-result -Wno-parentheses -I../include" LDFLAGS="-s -L../lib -ldao -lcrypt -Wl,--export-dynamic" $(EXE)

bsd:
	@$(MAKE) CFLAGS="-DBSD44 -O2 -pipe -fomit-frame-pointer -Wunused -Wno-unused-result -Wno-parentheses -I../include" LDFLAGS="-s -L../lib -ldao" $(EXE)

cygwin:
	@$(MAKE) CFLAGS="-DLINUX -DCYGWIN -O2 -pipe -fomit-frame-pointer -Wunused -I../include" LDFLAGS="-s -L../lib -ldao -lcrypt -lresolv -lcygipc" $(EXE)


bguard: bguard.o
	$(CC) -o $@ $? $(LDFLAGS)

xchatd: xchatd.o
	$(CC) -o $@ $? $(LDFLAGS)

bbsd: $(OBJ)
	$(CC) -o $@ $(OBJ) $(LDFLAGS)


install: $(EXE)
	install -m 0700 $? $(HOME)/bin

update:
	-csh -c "kill `tail -1 $(HOME)/run/bbs.pid | awk '{print $$1}'`";exit 0

clean:
	rm -f $(EXE) *.exe *.o *~
