Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD0C197091
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CF7GujlIFNkpwGNam3H69XadfhDfiGatp1boKgjJXpI=; b=HQ7leYO9bdHCd+
	mVHRcbLkK6ueBjOgfZ2+Oi1fcyvQh/H34XJOl8owDAl/yOB+kNAYwtQpT5ay4cy6I3lfN8L5fwqpn
	COYf8uCTjMPtZ7mqcAhl1TpCw8Qh/GI24Qzbzt9b3oRb+lLVrQa5OqHIZVnlg0Wmcrb2p8WSJQd+I
	CgGrG12y4oJY+La57UEOLci+D8WSF0oy2dBIIQdqo2h70zpoXUB/rfkdzktW8Eu2b9RrxlFra/+nr
	g7JM0t28zMpSOiHWNJLknDL/PEEjexTuD0TJcuPWodZ8y7dmB8RfAZUp310CLMhXx4Fl3l3gZbMzK
	lG1b9pscI9UDhY/faeNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIffW-0001fU-8l; Sun, 29 Mar 2020 21:40:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIffT-0001f6-LV
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:40:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id s1so18854724wrv.5
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AgmROX3BkKzlgBc4NFWPQwQ8h8d52JCY0V2IOQ/owaI=;
 b=qlyA4T0q4+SSHWrTFaEcJlORmZU3pRQPkEvp5F/+HEtsi5tpLFRS5PID3Ae7GG+qB9
 eP2zfS+OHM2Q11dDi/UTDHU0ChOytMBfa9+3uCmWYIkyMuhuwzPJ5kTbVsd1G9NCNqDo
 BwxcGxm9qerV09Wm6ZVEyH4dyKz6Pw2xsfrLVHp2TD9JsJg4vSwsw5Kn/YrAeRE/toMR
 utWmoK9E/IGZjLiMe2sbe0FEPEjdqdF4CAc99VYUNAl/Xr7b6PyOdewihnJcIm0SLT/A
 V9YiCZZ0GEx5J0cBWsET1u7QxNv8D3ddXFUHyt8dd2w5U68Q8zNCxTpxGV6udmEonNTW
 hUTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AgmROX3BkKzlgBc4NFWPQwQ8h8d52JCY0V2IOQ/owaI=;
 b=kuS6bkqecgkku0dqfLY2nGurrTASecWxt9Ehd1EL27BJn2dOJiXJxp/v2pA4ky+/pz
 rRdgCKXke/z968Rskcc+iMQ7t0O+TL3Ct5WQxEEpMv7fqfvjbmktupSl69LGSwuPb12c
 hV2UTqhQcmExg0gQ5deigk9o5oy69y52anco3ZzuOJjtUotLP9Fl5ZbchwosqR2v33Y1
 a+vl8zpuv58UQAyp6/W35Vu+A0n/h+O7VmS4anjXbmkyblGEHpoy7krqqdDx0LihQ4G1
 5rTS14y9rwULsjp1hp3TO4WrC48Nz8XTq0aQfn4Ff2Li0JE3vRAUvYDzfHqKgTNEVe+8
 Eb1Q==
X-Gm-Message-State: ANhLgQ3M/YAjQLH2holvaRakyhUldxLmBY0MFt3+HQm98uVUhtca7W4c
 PENu+Sd3boW+OG1LNyMxNl7+rm5E6pnHVGiCGgE=
X-Google-Smtp-Source: ADFU+vsa3r9uz8suX398A2w7vjHl4H5qnIB3+tO4GIRUd/dfrUpEG+GwxbUMUQtY4clxTGn7JJBDV5I/zAk8s49ys9k=
X-Received: by 2002:a5d:4a4d:: with SMTP id v13mr10858278wrs.85.1585518030514; 
 Sun, 29 Mar 2020 14:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200317004507.1513370-1-krisman@collabora.com>
In-Reply-To: <20200317004507.1513370-1-krisman@collabora.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:40:19 +0200
Message-ID: <CAFLxGvzGo8CPbH1NAo_d2NYHaJDZjYEELz=dufKtTwcBkZif_A@mail.gmail.com>
Subject: Re: [PATCH 0/2] fixes to the hypervisor ubd thread
To: Gabriel Krisman Bertazi <krisman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_144031_705292_EDEE2660 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 kernel@collabora.com, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 1:45 AM Gabriel Krisman Bertazi
<krisman@collabora.com> wrote:
>
> Hi,
>
> While debugging a somewhat related issue, I ran into two issues I
> believe can cause the hypervisor to write garbage to the pipe.
>
> This was find by visual inspection and is only slightly tested.  It
> seems to partially some the problems my test case shows.
>
> Please, let me know what you think

Both patches make sense. Thanks for fixing, applied.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
