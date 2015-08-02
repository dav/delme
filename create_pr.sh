DATE=`date +"%Y-%m-%d--%M-%S-%s"`
BRANCH="branch-${DATE}"
FILENAME="change.me"

git checkout -b "${BRANCH}"

echo "Change ${DATE}" > "${FILENAME}"

git add "${FILENAME}"
git commit -m "Updated ${FILENAME}\n[Refs #100374104]"
git push origin "${BRANCH}"

git checkout master

git branch -d "${BRANCH}"