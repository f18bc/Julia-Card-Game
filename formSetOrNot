function formSetOrNot(c1::Card, c2::Card, c3::Card)
  return (setHelper1(c1,c2,c3)) || (setHelper2(c1,c2) && setHelper2(c2,c3) && setHelper2(c1,c3))
end

function setHelper1(c1::Card, c2::Card, c3::Card)
  return c1.Color == c2.Color == c3.Color || c1.Pattern == c2.Pattern == c3.Pattern || c1.Shading == c2.Shading == c3.Shading ||c1.nPattern == c2.nPattern == c3.nPattern
end

function setHelper2(c1::Card, c2::Card)
  return c1.nPattern !=c2.nPattern && c1.Color != c2.Color && c1.Pattern != c2.Pattern && c1.Shading != c2.Shading
end
