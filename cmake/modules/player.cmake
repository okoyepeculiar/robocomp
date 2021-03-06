IF( "$ENV{PLAYERROOT}" STREQUAL "" )
  MESSAGE(STATUS "PLAYERROOT environment variable not set." )
  MESSAGE(STATUS "This can be done in your user .bashrc file by appending the corresponding line, e.g:" )
  MESSAGE(STATUS "export PLAYERROOT=/usr/local/" )
  SET(PLAYER_FOUND 0)
ELSE( "$ENV{PLAYERROOT}" STREQUAL "" )
  SET(PLAYER_LIBS -lplayercore -lplayerc++)
  INCLUDE_DIRECTORIES( "$ENV{PLAYERROOT}/include/player-3.0")
  SET( LIBS ${LIBS} ${PLAYER_LIBS} -L$ENV{PLAYERROOT}/lib64/ )
  ADD_DEFINITIONS(-DCOMPILE_PLAYER=1)
  SET(PLAYER_FOUND 1)
  SET (LIBS ${LIBS} ${PLAYER_LIBS})
ENDIF( "$ENV{PLAYERROOT}" STREQUAL "" )

