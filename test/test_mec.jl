mdp = DiscreteMDP(T, R, 0.95)


MEC = maximal_end_components(mdp, verbose=true)
@test MEC == [[3], [4]]

gw = GridWorld(sx=20, sy=20)
gw_mec = maximal_end_components(gw, verbose=false)

@test length(gw_mec) == 2*gw.size_y + 2*gw.size_x - 3